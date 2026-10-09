import 'dart:io';

import 'package:aigammon_app/lan/lan_transport.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lan_play/lan_play.dart';

void main() {
  test('local address selection favors LAN adapters over VPNs', () {
    expect(
      selectLanAddress([
        (interfaceName: 'tun0', address: '10.8.0.2'),
        (interfaceName: 'wlan0', address: '192.168.1.24'),
      ]),
      '192.168.1.24',
    );
  });

  test('local address selection skips unusable addresses and has fallback', () {
    expect(
      selectLanAddress([
        (interfaceName: 'lo', address: '127.0.0.1'),
        (interfaceName: 'wlan0', address: '169.254.4.2'),
        (interfaceName: 'en0', address: '192.168.2.10'),
      ]),
      '192.168.2.10',
    );
    expect(selectLanAddress(const []), isNull);
  });

  test('default discovery identifies the app, not the OS hostname', () async {
    // Exercise the real advertisement over loopback only: never announce a
    // test device on the user's actual LAN or open a firewall prompt.
    const transport = LiveNearbyTransport();
    final beacon = await HostBeacon.start(
      name: transport.deviceName,
      matchPort: 47780,
      port: 0,
      bindAddress: InternetAddress.loopbackIPv4,
    );
    addTearDown(beacon.stop);
    final discovered = await discoverHosts(
      port: beacon.port,
      targets: [InternetAddress.loopbackIPv4],
      timeout: const Duration(seconds: 1),
    );
    expect(discovered, hasLength(1));
    expect(discovered.single.name, 'Backgammon Buddy device');
    // Routing remains address/port based, independent of the common label.
    expect(discovered.single.address, InternetAddress.loopbackIPv4.address);
    expect(discovered.single.port, 47780);
  });
}

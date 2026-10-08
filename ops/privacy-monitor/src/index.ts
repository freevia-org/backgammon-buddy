import { runMonitor } from './monitor.ts';

export default {
  async scheduled(_controller, env, _ctx) {
    try {
      const result = await runMonitor(env);
      console.log(JSON.stringify({ event: 'privacy_cleanup_monitor', ...result }));
    } catch (_) {
      console.error(JSON.stringify({ event: 'privacy_cleanup_monitor', status: 'monitor_error' }));
      throw new Error('Privacy monitor could not persist status or send its operational alert.');
    }
  },
  // No public mail trigger, arbitrary URL, recipient or credential surface.
  async fetch() { return new Response('Not found', { status: 404 }); },
} satisfies ExportedHandler<Env>;

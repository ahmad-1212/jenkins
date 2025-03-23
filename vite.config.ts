import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  esbuild: {
    logLevel: "silent",
  },
  server: {
    strictPort: true,
    port: 8080,
    host: true,
    origin: "http://0.0.0.0:8080",
    watch: {
      usePolling: true,
    },
  },
});

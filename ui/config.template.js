window.ACE_STEP_CONFIG = {
  protocol: "${ACE_STEP_PROTOCOL}",
  host: "${ACE_STEP_HOST}",
  port: "${ACE_STEP_PORT}",
  basePath: "${ACE_STEP_BASE_PATH}",
  apiBase: function () {
    const portPart = this.port ? `:${this.port}` : "";
    const basePath = this.basePath || "";
    return `${this.protocol}://${this.host}${portPart}${basePath}`;
  }
};

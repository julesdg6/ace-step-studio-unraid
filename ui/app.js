function getApiBase() {
  return window.ACE_STEP_CONFIG.apiBase();
}

async function test() {
  alert("API Base: " + getApiBase());
}

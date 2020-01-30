var Module = {
  print: console.log,
};

const run_lua = (code) => {
  return Module.ccall("run_lua", 'string', ['string'], [code]);
}

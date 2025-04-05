export default (v: any) => {
  return toRaw(unref(v));
};

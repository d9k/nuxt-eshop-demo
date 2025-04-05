export const useFakeStoreApiUrl = () => {
  const config = useRuntimeConfig();
  return config.public.fakeStoreApiUrl;
};

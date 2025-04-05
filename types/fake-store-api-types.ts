import type { components } from "#open-fetch-schemas/fake-store-api";

type schemas = components["schemas"];

export type BaseFields = {
  id: number;
  creationAt?: string;
  updatedAt?: string;
};

export type Category = BaseFields & schemas["CreateCategoryDto"];

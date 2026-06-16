import type { OrchidRepository } from "./orchid.repository.js";
import type { OrchidListFilters, OrchidListResponse } from "./orchid.types.js";

export type OrchidService = {
  listOrchids: (filters?: OrchidListFilters) => Promise<OrchidListResponse>;
};

export function createOrchidService(repository: OrchidRepository): OrchidService {
  return {
    async listOrchids(filters) {
      const orchids = await repository.listOrchids(filters);

      return { orchids };
    },
  };
}

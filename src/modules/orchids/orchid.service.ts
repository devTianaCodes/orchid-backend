import type { OrchidRepository } from "./orchid.repository.js";
import type { OrchidListResponse } from "./orchid.types.js";

export type OrchidService = {
  listOrchids: () => Promise<OrchidListResponse>;
};

export function createOrchidService(repository: OrchidRepository): OrchidService {
  return {
    async listOrchids() {
      const orchids = await repository.listOrchids();

      return { orchids };
    },
  };
}

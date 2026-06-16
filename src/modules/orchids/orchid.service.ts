import type { OrchidRepository } from "./orchid.repository.js";
import type {
  OrchidDetailResponse,
  OrchidFilterMetadataResponse,
  OrchidListFilters,
  OrchidListResponse,
} from "./orchid.types.js";

export type OrchidService = {
  listOrchids: (filters?: OrchidListFilters) => Promise<OrchidListResponse>;
  getOrchidBySlug: (slug: string) => Promise<OrchidDetailResponse | null>;
  getFilterMetadata: () => Promise<OrchidFilterMetadataResponse>;
};

export function createOrchidService(repository: OrchidRepository): OrchidService {
  return {
    async listOrchids(filters) {
      const orchids = await repository.listOrchids(filters);

      return { orchids };
    },

    async getOrchidBySlug(slug) {
      const orchid = await repository.findOrchidBySlug(slug);

      return orchid ? { orchid } : null;
    },

    async getFilterMetadata() {
      return repository.getFilterMetadata();
    },
  };
}

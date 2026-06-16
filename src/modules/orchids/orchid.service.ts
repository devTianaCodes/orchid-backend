import type { OrchidRepository } from "./orchid.repository.js";
import type {
  OrchidDetailResponse,
  OrchidFilterMetadataResponse,
  OrchidListFilters,
  OrchidListResponse,
} from "./orchid.types.js";

export type OrchidService = {
  listOrchids: (filters: OrchidListFilters) => Promise<OrchidListResponse>;
  getOrchidBySlug: (slug: string) => Promise<OrchidDetailResponse | null>;
  getFilterMetadata: () => Promise<OrchidFilterMetadataResponse>;
};

export function createOrchidService(repository: OrchidRepository): OrchidService {
  return {
    async listOrchids(filters) {
      const listResult = await repository.listOrchids(filters);
      const totalPages = Math.ceil(listResult.totalItems / filters.pageSize);

      return {
        orchids: listResult.orchids,
        pagination: {
          page: filters.page,
          pageSize: filters.pageSize,
          totalItems: listResult.totalItems,
          totalPages,
          hasPreviousPage: filters.page > 1,
          hasNextPage: filters.page < totalPages,
        },
      };
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

declare module '@apiverve/pictionary' {
  export interface pictionaryOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface pictionaryResponse {
    status: string;
    error: string | null;
    data: PictionaryGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface PictionaryGeneratorData {
      words:      (null | string)[];
      count:      number | null;
      difficulty: null | string;
  }

  export default class pictionaryWrapper {
    constructor(options: pictionaryOptions);

    execute(callback: (error: any, data: pictionaryResponse | null) => void): Promise<pictionaryResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: pictionaryResponse | null) => void): Promise<pictionaryResponse>;
    execute(query?: Record<string, any>): Promise<pictionaryResponse>;
  }
}

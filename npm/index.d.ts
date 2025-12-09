declare module '@apiverve/pictionary' {
  export interface pictionaryOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface pictionaryResponse {
    status: string;
    error: string | null;
    data: PictionaryGeneratorData;
    code?: number;
  }


  interface PictionaryGeneratorData {
      words:      string[];
      count:      number;
      difficulty: string;
  }

  export default class pictionaryWrapper {
    constructor(options: pictionaryOptions);

    execute(callback: (error: any, data: pictionaryResponse | null) => void): Promise<pictionaryResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: pictionaryResponse | null) => void): Promise<pictionaryResponse>;
    execute(query?: Record<string, any>): Promise<pictionaryResponse>;
  }
}

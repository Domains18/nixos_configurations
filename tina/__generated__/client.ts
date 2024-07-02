import { createClient } from "tinacms/dist/client";
import { queries } from "./types";
export const client = createClient({ url: 'http://localhost:4001/graphql', token: '6fa7099560fb145bc48118a9f417cbd5384fac24', queries,  });
export default client;
  
import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'checkBalance' : () => Promise<number>,
  'compound' : () => Promise<number>,
  'topUp' : (arg_0: bigint) => Promise<number>,
  'withDrawl' : (arg_0: bigint) => Promise<number>,
}

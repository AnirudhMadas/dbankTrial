export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'checkBalance' : IDL.Func([], [IDL.Float64], ['query']),
    'compound' : IDL.Func([], [IDL.Float64], []),
    'topUp' : IDL.Func([IDL.Nat], [IDL.Float64], []),
    'withDrawl' : IDL.Func([IDL.Nat], [IDL.Float64], []),
  });
};
export const init = ({ IDL }) => { return []; };

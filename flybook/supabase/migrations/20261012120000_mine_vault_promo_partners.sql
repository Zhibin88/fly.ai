-- Deposit competition slots for partner collections (2026-10-12, the user: "can we setup 5 only for the Bullas nft
-- holders?"): a partner's wallets compete under their book, chain 'p_<id>' (mine/src/partners.ts), with their own
-- slots per round (PROMO_PARTNER_SLOTS in mine/src/vaults.ts).
alter table mine.vault_promos drop constraint if exists vault_promos_chain_check;
alter table mine.vault_promos add constraint vault_promos_chain_check
  check (chain in ('robinhood', 'ruyui') or chain ~ '^p_[a-z0-9_]+$');

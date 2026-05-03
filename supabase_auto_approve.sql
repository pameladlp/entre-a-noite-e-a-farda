-- SUPABASE: remover moderação e publicar comentários automaticamente
-- Execute este script em: Supabase > SQL Editor

-- 1. Novos comentários passam a entrar como approved
alter table public.guestbook_comments
alter column status set default 'approved';

-- 2. Troca a política de inserção: visitantes podem inserir comentários já aprovados
drop policy if exists "Anyone can insert pending comments" on public.guestbook_comments;
drop policy if exists "Anyone can insert approved comments" on public.guestbook_comments;

create policy "Anyone can insert approved comments"
on public.guestbook_comments
for insert
to anon
with check (
  status = 'approved'
  and length(trim(name)) between 2 and 80
  and length(trim(comment)) between 2 and 1200
);

-- 3. Mantém a leitura pública apenas dos approved
drop policy if exists "Anyone can read approved comments" on public.guestbook_comments;

create policy "Anyone can read approved comments"
on public.guestbook_comments
for select
to anon
using (status = 'approved');

-- 4. Opcional: aprovar todos os comentários que já estavam pendentes
update public.guestbook_comments
set status = 'approved'
where status = 'pending';

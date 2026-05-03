# Entre a Noite e a Farda — versão com Supabase

Esta versão usa Supabase para o livro de visitas com moderação.

## Arquivos

- `index.html`: site completo.
- `assets/`: imagens do site.
- `supabase.sql`: script para criar a tabela e as políticas de segurança.

## Como ativar os comentários públicos

1. Crie um projeto no Supabase.
2. Abra **SQL Editor**.
3. Execute o arquivo `supabase.sql`.
4. Vá em **Project Settings > API**.
5. Copie:
   - Project URL
   - anon public key
6. Abra o arquivo `index.html`.
7. Substitua:

```js
const SUPABASE_URL = "COLE_AQUI_A_URL_DO_SUPABASE";
const SUPABASE_ANON_KEY = "COLE_AQUI_A_ANON_PUBLIC_KEY";
```

pelos seus dados reais.

## Como aprovar comentários

1. No Supabase, vá em **Table Editor**.
2. Abra a tabela `guestbook_comments`.
3. Mensagens novas entram com `status = pending`.
4. Para publicar, mude para `approved`.
5. Para rejeitar, mude para `rejected`.

## Segurança

O site permite que qualquer visitante envie comentário, mas somente comentários aprovados aparecem publicamente.


## Epílogo atualizado

O último parágrafo do epílogo foi substituído pelo texto sobre o serviço de polícia ostensiva como intervenção e auxílio ao cidadão.


## Versão otimizada

As imagens foram comprimidas para JPG para permitir upload pelo navegador do GitHub e carregamento mais rápido no GitHub Pages.


## Ajustes adicionais

- Capa da página inicial corrigida para aparecer inteira, sem corte.
- Legendas da galeria revisadas para corresponder melhor às fotos.

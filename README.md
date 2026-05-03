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


## Supabase configurado

Este pacote já está com a Project URL e a publishable key pública inseridas no `index.html`.

A moderação continua sendo feita no Supabase pela coluna `status` da tabela `guestbook_comments`.


## Favicon

Esta versão inclui favicon em:
- `assets/favicon/favicon.ico`
- `assets/favicon/favicon-16x16.png`
- `assets/favicon/favicon-32x32.png`
- `assets/favicon/apple-touch-icon.png`
- `assets/favicon/site.webmanifest`

Se o favicon não aparecer imediatamente no GitHub Pages, limpe o cache ou abra o site com `?v=4` no final da URL.


## Comentários sem moderação

Esta versão publica comentários automaticamente.

Para atualizar o Supabase já criado:
1. Abra o Supabase.
2. Vá em SQL Editor.
3. Execute o arquivo `supabase_auto_approve.sql`.

Depois disso, novos comentários entram como `approved` e aparecem no site sem aprovação manual.


## Atualização final

- Foto da seção “Sobre o autor” substituída pela nova imagem enviada.
- Comentários configurados para publicação automática, sem aprovação manual.
- Ilustração do capítulo do CREED ampliada levemente para ficar mais proporcional às demais.


## Galeria atualizada

Foram adicionados à galeria:
- Medalha de Bronze — 10 anos de serviço
- Medalha de Prata — 20 anos de serviço
- Medalha de Ouro — 30 anos de serviço
- Medalha Pernambucana do Mérito Policial Militar
- Certificado de destaque pelos bons serviços prestados
- Homenagem do 17º BPM — 2021
- Foto das medalhas e condecorações


## Foto do autor corrigida

A nova foto do autor foi aplicada nos dois locais:
- card “Sobre o autor” da página inicial;
- seção completa “Sobre o autor”.


## Ajuste de galeria

O card do Diploma de Pós-Graduação em Gestão de Recursos Humanos foi removido da galeria.


## Medalhas e Honrarias em seção própria

A galeria foi reorganizada:
- fotos pessoais e de trajetória permanecem em “Galeria completa”;
- medalhas, certificados e homenagens foram movidos para a seção “Medalhas e Honrarias”.

Ordem definida:
1. Medalha de Bronze — 10 anos
2. Medalha de Prata — 20 anos
3. Medalha de Ouro — 30 anos
4. Medalha Pernambucana do Mérito Policial Militar
5. Certificado de destaque pelos bons serviços prestados
6. Homenagem do 17º BPM — 2021
7. Medalhas e condecorações


## Ajustes finais de navegação e responsividade

- Item “Medalhas” incluído no menu superior.
- Seção “Medalhas e Honrarias” acessível diretamente pelo menu.
- Responsividade reforçada para celular, especialmente no menu, galerias e honrarias.
- Nova foto “Retrato fardado” adicionada à galeria comum.

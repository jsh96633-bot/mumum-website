-- Run once in Supabase SQL Editor after creating your project.
-- Create a Supabase Auth user (email/password), then replace ADMIN_USER_UUID below.
create table if not exists public.site_images (
  slot text primary key check (slot in ('hero','story','pendant','urn')),
  image_url text not null check (image_url like 'https://%'),
  updated_at timestamptz not null default now()
);
alter table public.site_images enable row level security;
create policy "Visitors read published images" on public.site_images for select to anon, authenticated using (true);
create policy "Only designated admin can insert" on public.site_images for insert to authenticated with check (auth.uid() = 'ADMIN_USER_UUID'::uuid);
create policy "Only designated admin can update" on public.site_images for update to authenticated using (auth.uid() = 'ADMIN_USER_UUID'::uuid) with check (auth.uid() = 'ADMIN_USER_UUID'::uuid);
insert into storage.buckets (id,name,public,file_size_limit,allowed_mime_types)
values ('site-images','site-images',true,5242880,array['image/jpeg'])
on conflict (id) do nothing;
create policy "Public can view MUMUM photos" on storage.objects for select to anon,authenticated using (bucket_id='site-images');
create policy "Admin can upload MUMUM photos" on storage.objects for insert to authenticated with check (bucket_id='site-images' and auth.uid() = 'ADMIN_USER_UUID'::uuid);
-- Never put the Supabase service_role key or an admin password in cloud-config.js.

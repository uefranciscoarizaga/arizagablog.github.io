CREATE TABLE IF NOT EXISTS events (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  date date NOT NULL,
  time text NOT NULL,
  description text NOT NULL,
  category text NOT NULL CHECK (category IN ('academico', 'cultural', 'deportivo', 'social', 'ceremonial')),
  location text NOT NULL,
  image text,
  created_at timestamptz DEFAULT now(),
  created_by uuid REFERENCES auth.users(id)
);

ALTER TABLE events ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can read events"
  ON events FOR SELECT TO anon, authenticated USING (true);

CREATE POLICY "Authenticated users can create events"
  ON events FOR INSERT TO authenticated WITH CHECK (true);

CREATE POLICY "Authenticated users can update events"
  ON events FOR UPDATE TO authenticated USING (true) WITH CHECK (true);

CREATE POLICY "Authenticated users can delete events"
  ON events FOR DELETE TO authenticated USING (true);

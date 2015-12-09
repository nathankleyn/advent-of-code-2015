FIXTURE_ROOT = File.join(__dir__, 'fixtures')

def load_fixture(path)
  File.read(File.join(FIXTURE_ROOT, path))
end

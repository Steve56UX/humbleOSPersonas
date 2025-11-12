# Contributing to humbleOS Personas

Thank you for your interest in contributing to humbleOS Personas! 🎉

We believe in building together, humbly and openly. Your contributions help make Linux more accessible to developers worldwide.

## Ways to Contribute

### 1. Add a New Persona

Do you represent a developer role not yet in our personas? Add it!

**Steps:**
1. Fork this repository
2. Edit `personas.json`
3. Add your persona following this structure:

```json
{
  "id": "unique-id",
  "name": "Your Persona Name",
  "description": "Brief description",
  "category": "Category Name",
  "packages": ["pkg1", "pkg2"],
  "aur_packages": ["aur-pkg1"]
}
```

4. Test your packages locally
5. Submit a pull request

### 2. Improve Existing Personas

- Add missing essential packages
- Remove deprecated packages
- Update package names
- Improve descriptions

### 3. Fix Bugs

Found a package conflict or installation issue? Please:
1. Open an issue describing the problem
2. Submit a PR with the fix

### 4. Improve Documentation

- Fix typos
- Add examples
- Improve clarity
- Translate content

## Guidelines

### Package Selection

✅ **DO Include:**
- Essential tools for the role
- Widely-used industry standards
- Well-maintained packages

❌ **DON'T Include:**
- Niche/experimental packages
- Unmaintained software
- Personal preferences (unless widely adopted)

### Code Style

- Use consistent JSON formatting
- Keep persona IDs lowercase with hyphens
- Sort packages alphabetically
- Add comments for complex decisions

## Pull Request Process

1. **Fork & Clone**
   ```bash
   git clone https://github.com/YOUR-USERNAME/humbleOSPersonas.git
   ```

2. **Create a Branch**
   ```bash
   git checkout -b add-rust-developer-persona
   ```

3. **Make Your Changes**
   - Edit `personas.json`
   - Test locally if possible

4. **Commit with Clear Message**
   ```bash
   git commit -m "Add Rust Developer persona with cargo and rustup"
   ```

5. **Push and Create PR**
   ```bash
   git push origin add-rust-developer-persona
   ```

6. **Wait for Review**
   - Maintainers will review within 48 hours
   - Address feedback if requested

## Community Standards

- Be respectful and humble
- Welcome newcomers
- Provide constructive feedback
- Follow our Code of Conduct

## Questions?

Open an issue or reach out to the community!

---

*humbleOS: Built by the community, for the community. Free Forever.*

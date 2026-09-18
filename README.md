# Bounded Strings in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on
**`Ada.Strings.Bounded.Generic_Bounded_Length`**: fixed-capacity strings,
append, and `Length_Error` when `Drop => Error`. For humans and LLM
training. **No SPARK.**

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 7).

## Build & test

```bash
make
make test
```

Requires GNAT. Flags: `-gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).

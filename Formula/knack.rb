class Knack < Formula
  desc "One library of coding-agent skills, projected into every agent you use"
  homepage "https://github.com/tanghong123/homebrew-tap"
  license any_of: ["Apache-2.0", "MIT"]

  # Only an Apple Silicon build is published so far. Without these, an unsupported
  # platform fails with a confusing "no url" rather than saying what is wrong.
  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/knack-0.2.0/knack-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "84a72803be498c3e56a949fea25c844f91d2d233d9273d2ba33dd74f3bc19fc5"
    end
  end

  def install
    bin.install "knack"
  end

  def caveats
    <<~EOS
      knack shells out to the system git for anything networked, so git must be on PATH.

      Getting started:
        knack lib init       # pick which agents to manage, and install the companion skill
        knack lib migrate    # bring in the skills those agents already have
        knack lib status

      Coming from 0.1.0: importing no longer reaches every agent. `import`, `track`, and
      `create` land a skill in the library and stop there — pass --agent or --all-agents to
      export in the same breath. And a skill nobody has vouched for is refused on the way
      to an agent that lacks it: run `knack lib review`, or pass --force.
    EOS
  end

  test do
    assert_match "knack #{version}", shell_output("#{bin}/knack --version")
    # The command catalogue is what the bundled companion skill introspects, so a build
    # that starts but cannot produce it is still broken.
    assert_match "knack lib import", shell_output("#{bin}/knack lib help --json")
    # libgit2 is linked statically on purpose: the binary must not need the build host's
    # copy. A dynamically linked build passes both checks above and then fails on any
    # machine without a matching libgit2, which is a nasty way to find out.
    refute_match "libgit2", shell_output("otool -L #{bin}/knack")
  end
end

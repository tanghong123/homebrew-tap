class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.175.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "38e93ca8988be0e14358d29ce707fabdec8ab8926e9fdbc8d93e5035bfd77344"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a62a95218f42336bfd78d3b8df8495db4ba66b56ab69b8a99ee32b9664ee16a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5cd4e5645614c98e615f4e5c4f9d195a750191fb5fc8e3b661e813737a0eefe8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a33a7cac8223e6312ad361a534b93574214896582a8ee7e04decffe5bf91e4d6"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end

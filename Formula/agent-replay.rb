class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.305.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ba47a57eb776c9bd4859ab6212e9736cda9b14b6fa707ab2e307296ec4bb108c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c5622880167fe1d46518552922778de3d42aa7fb22bf5b144391eeea874f0cb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb612881bf628990bff059d29b338f9aba7ca4479899f934b5fd36ad0fddb56e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "462478813da263d555b1f225245db4a8294f7d91ae5d4b452d06f48cc33602d0"
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

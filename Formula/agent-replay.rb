class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.418.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3f02629397fd59e02197dafc5702ec232cfab26d043cb26ca32231be5d8f99d4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0e25913d2e102b14e3e55dd1b64e55119762b1bbbd5a797246556ed411f9dfe3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "43c2a8c693bb8721f1bdd6c0fe244cdfde4cecd35ff08395afb9ef4959622d59"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "13e3274ee4d52c1f8723ccf1e5c08959277f2478aff75147307a4395ab8e0f0b"
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

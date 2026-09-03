class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.142.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2ca5c90cdae280c3ae14c19e339ef882e3a3edfe660738c23644edbc196d370a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f436c496ce23175fc80831c1c1224a297f931de0cd11ffc4a1eff75330e77e08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6a58e7ca27c2cbd42ad7a29d6b541a33dc9ba2cbe89423bb404144d1ad2983f3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "43190e3d9aa43036940b321799a94861b0dbbe409801c5cf941d0cb4935aaf56"
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

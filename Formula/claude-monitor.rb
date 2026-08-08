class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.9"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.9/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0bf6a48484701dd01d7c9abbcaf81a54103ef7e77bc2681b621dfa29f0e7985f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.9/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c6f44996f87b3bb05c3d15d45aec6f0c29fffb368d68989c552c4b5b237d414c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.9/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "59997b070c74c98a01b51faa224a37fdd4d335866469bf9f2e4de86a1a839fc2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.9/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9042f549d02ab7c84770b711529fd5f170d322cc39938b068ca517738631004c"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end

class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.442.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f896a11b6228a3bf0850ecdf25c661b07889a4d173d78bc0caa89c36f82a6114"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a534d95e77fd45d56cb6c58ee84069ae82c8c0f8381d2d56d15df6b7d40d1e39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e914f478de48bb8ea1ad91e763e440ed628509634e2baa650e34dd48caee904d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0c83689d7d4d1aae4ad51a8e5c638c6886b4de63c8ade06dd4a6dcd447f94b42"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end

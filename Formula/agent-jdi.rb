class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a902eaa5c64f35a6eff6249b6fe0eb1c5e8d6391c51b3bb3e46ecce64ac2b667"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "792ad49af4a9cdf16f1d6665f5d1755e7afa529b85596acd676a2b8bcb0cdd9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "875dd0533dd442c4596cd457f33c8e8eafb3651040f3835b69d022bfc768e6b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7170196521f57b969a2faf5f87db8141e3090bd108053d6c35b05b4472d1bc23"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.4/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "77051fee8d130fd9139780573536d01017aa89a5ab92afe1d575bc009e327c66"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.4/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5326eab3efd21f5be53b023d45f3a48a0d6217899142ab62952383a2c7ed5dce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.4/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ab4a678ee04e1d86861901fe6af1897901d38b6befa68facbaccb61171f7828"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.4/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4fae55fb54ed1e68a5d001cc51050695c7737f5b3598735563925bdf166787c7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

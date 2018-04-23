.class Lcom/intermedia/ChatPresenter$2;
.super Lcom/intermedia/network/SimpleSocketAPIListener;
.source "ChatPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/ChatPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/ChatPresenter;


# direct methods
.method constructor <init>(Lcom/intermedia/ChatPresenter;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/intermedia/ChatPresenter$2;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-direct {p0}, Lcom/intermedia/network/SimpleSocketAPIListener;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastConnected()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/intermedia/ChatPresenter$2;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v0}, Lcom/intermedia/ChatPresenter;->access$300(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/av/media/HPViewerSession;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/ChatPresenter$2;->this$0:Lcom/intermedia/ChatPresenter;

    .line 68
    invoke-static {v1}, Lcom/intermedia/ChatPresenter;->access$200(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/ChatViewHost;

    move-result-object v1

    iget-object v1, v1, Lcom/intermedia/ChatViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 67
    :goto_0
    invoke-virtual {v0, v2}, Lcom/intermedia/av/media/HPViewerSession;->sendChatVisibilityToggled(Z)V

    return-void
.end method

.method public receivedInteraction(Lcom/intermedia/av/media/HPMediaItemInteraction;)V
    .locals 6
    .param p1    # Lcom/intermedia/av/media/HPMediaItemInteraction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    iget-object v0, p0, Lcom/intermedia/ChatPresenter$2;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v0}, Lcom/intermedia/ChatPresenter;->access$400(Lcom/intermedia/ChatPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/intermedia/ChatPresenter$2;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v0}, Lcom/intermedia/ChatPresenter;->access$000(Lcom/intermedia/ChatPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/intermedia/ChatPresenter$2;->this$0:Lcom/intermedia/ChatPresenter;

    iget-object v1, p0, Lcom/intermedia/ChatPresenter$2;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v1}, Lcom/intermedia/ChatPresenter;->access$500(Lcom/intermedia/ChatPresenter;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/intermedia/ChatPresenter;->access$502(Lcom/intermedia/ChatPresenter;I)I

    .line 77
    iget-object v0, p0, Lcom/intermedia/ChatPresenter$2;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v0}, Lcom/intermedia/ChatPresenter;->access$600(Lcom/intermedia/ChatPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0004

    iget-object v3, p0, Lcom/intermedia/ChatPresenter$2;->this$0:Lcom/intermedia/ChatPresenter;

    .line 78
    invoke-static {v3}, Lcom/intermedia/ChatPresenter;->access$500(Lcom/intermedia/ChatPresenter;)I

    move-result v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/intermedia/ChatPresenter$2;->this$0:Lcom/intermedia/ChatPresenter;

    .line 79
    invoke-static {v4}, Lcom/intermedia/ChatPresenter;->access$500(Lcom/intermedia/ChatPresenter;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 78
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/intermedia/ChatPresenter$2;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v1}, Lcom/intermedia/ChatPresenter;->access$200(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/ChatViewHost;

    move-result-object v1

    iget-object v1, v1, Lcom/intermedia/ChatViewHost;->chatCountButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/intermedia/ChatPresenter$2;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v0}, Lcom/intermedia/ChatPresenter;->access$200(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/ChatViewHost;

    move-result-object v0

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatCountButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getChatMessage()Lcom/intermedia/model/ChatMessage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/intermedia/ChatPresenter$2;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v0}, Lcom/intermedia/ChatPresenter;->access$100(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/chat/ChatAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getChatMessage()Lcom/intermedia/model/ChatMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/intermedia/chat/ChatAdapter;->addMessage(Lcom/intermedia/model/ChatMessage;)V

    :cond_2
    return-void
.end method

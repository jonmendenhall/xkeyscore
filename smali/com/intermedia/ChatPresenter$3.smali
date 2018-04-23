.class Lcom/intermedia/ChatPresenter$3;
.super Ljava/lang/Object;
.source "ChatPresenter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/ChatPresenter;->configure()V
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

    .line 105
    iput-object p1, p0, Lcom/intermedia/ChatPresenter$3;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    iget-object p1, p0, Lcom/intermedia/ChatPresenter$3;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {p1}, Lcom/intermedia/ChatPresenter;->access$300(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/av/media/HPViewerSession;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/intermedia/av/media/HPViewerSession;->sendChatVisibilityToggled(Z)V

    .line 116
    iget-object p1, p0, Lcom/intermedia/ChatPresenter$3;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {p1}, Lcom/intermedia/ChatPresenter;->access$100(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/chat/ChatAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/intermedia/chat/ChatAdapter;->fetchAvatarImages(Z)V

    .line 117
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    if-eqz v0, :cond_1

    const-string v0, "chat_wasRevealed"

    goto :goto_1

    :cond_1
    const-string v0, "chat_wasHidden"

    :goto_1
    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    return-void
.end method

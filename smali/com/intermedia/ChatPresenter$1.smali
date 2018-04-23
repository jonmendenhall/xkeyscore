.class Lcom/intermedia/ChatPresenter$1;
.super Ljava/lang/Object;
.source "ChatPresenter.java"

# interfaces
.implements Lcom/intermedia/function/NoArgCallback;


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

    .line 55
    iput-object p1, p0, Lcom/intermedia/ChatPresenter$1;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/intermedia/ChatPresenter$1;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v0}, Lcom/intermedia/ChatPresenter;->access$000(Lcom/intermedia/ChatPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/intermedia/ChatPresenter$1;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v0}, Lcom/intermedia/ChatPresenter;->access$200(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/ChatViewHost;

    move-result-object v0

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/intermedia/ChatPresenter$1;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v1}, Lcom/intermedia/ChatPresenter;->access$100(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/chat/ChatAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intermedia/chat/ChatAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

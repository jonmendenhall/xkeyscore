.class Lcom/intermedia/ChatPresenter$4;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ChatPresenter.java"


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

    .line 130
    iput-object p1, p0, Lcom/intermedia/ChatPresenter$4;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .line 134
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 135
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 136
    iget-object v0, p0, Lcom/intermedia/ChatPresenter$4;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v0}, Lcom/intermedia/ChatPresenter;->access$100(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/chat/ChatAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/chat/ChatAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/intermedia/ChatPresenter$4;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {p1, v1}, Lcom/intermedia/ChatPresenter;->access$002(Lcom/intermedia/ChatPresenter;Z)Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    if-lt p1, v0, :cond_1

    .line 140
    iget-object p1, p0, Lcom/intermedia/ChatPresenter$4;->this$0:Lcom/intermedia/ChatPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/intermedia/ChatPresenter;->access$002(Lcom/intermedia/ChatPresenter;Z)Z

    .line 141
    iget-object p1, p0, Lcom/intermedia/ChatPresenter$4;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {p1}, Lcom/intermedia/ChatPresenter;->access$800(Lcom/intermedia/ChatPresenter;)V

    :cond_1
    :goto_0
    return-void
.end method

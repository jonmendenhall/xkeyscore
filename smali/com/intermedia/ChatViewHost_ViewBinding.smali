.class public final Lcom/intermedia/ChatViewHost_ViewBinding;
.super Ljava/lang/Object;
.source "ChatViewHost_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/ChatViewHost;


# direct methods
.method public constructor <init>(Lcom/intermedia/ChatViewHost;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/intermedia/ChatViewHost_ViewBinding;->target:Lcom/intermedia/ChatViewHost;

    const-string v0, "field \'chatRecyclerView\'"

    .line 24
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0a0065

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/intermedia/ChatViewHost;->chatRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'chatInput\'"

    .line 25
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0064

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/intermedia/ChatViewHost;->chatInput:Landroid/widget/LinearLayout;

    const-string v0, "field \'chatEditText\'"

    .line 26
    const-class v1, Lcom/intermedia/view/CustomEditText;

    const v2, 0x7f0a0062

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/view/CustomEditText;

    iput-object v0, p1, Lcom/intermedia/ChatViewHost;->chatEditText:Lcom/intermedia/view/CustomEditText;

    const-string v0, "field \'chatCountButton\'"

    .line 27
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0061

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/ChatViewHost;->chatCountButton:Landroid/widget/Button;

    const-string v0, "field \'chatListBackground\'"

    const v1, 0x7f0a0066

    .line 28
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/intermedia/ChatViewHost;->chatListBackground:Landroid/view/View;

    const-string v0, "field \'chatFab\'"

    .line 29
    const-class v1, Landroid/support/design/widget/FloatingActionButton;

    const v2, 0x7f0a0063

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    iput-object p2, p1, Lcom/intermedia/ChatViewHost;->chatFab:Landroid/support/design/widget/FloatingActionButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/intermedia/ChatViewHost_ViewBinding;->target:Lcom/intermedia/ChatViewHost;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/intermedia/ChatViewHost_ViewBinding;->target:Lcom/intermedia/ChatViewHost;

    .line 38
    iput-object v1, v0, Lcom/intermedia/ChatViewHost;->chatRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 39
    iput-object v1, v0, Lcom/intermedia/ChatViewHost;->chatInput:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, v0, Lcom/intermedia/ChatViewHost;->chatEditText:Lcom/intermedia/view/CustomEditText;

    .line 41
    iput-object v1, v0, Lcom/intermedia/ChatViewHost;->chatCountButton:Landroid/widget/Button;

    .line 42
    iput-object v1, v0, Lcom/intermedia/ChatViewHost;->chatListBackground:Landroid/view/View;

    .line 43
    iput-object v1, v0, Lcom/intermedia/ChatViewHost;->chatFab:Landroid/support/design/widget/FloatingActionButton;

    return-void
.end method

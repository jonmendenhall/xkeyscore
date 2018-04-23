.class public final Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "WinnerListAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder_ViewBinding;->target:Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;

    const-string v0, "field \'winnerContainer\'"

    .line 23
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a01f8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->winnerContainer:Landroid/widget/LinearLayout;

    const-string v0, "field \'winnerName\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01f6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->winnerName:Landroid/widget/TextView;

    const-string v0, "field \'winnerPrize\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01f7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->winnerPrize:Landroid/widget/TextView;

    const-string v0, "field \'winnerAvatar\'"

    .line 26
    const-class v1, Lde/hdodenhof/circleimageview/CircleImageView;

    const v2, 0x7f0a01f5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p2, p1, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->winnerAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder_ViewBinding;->target:Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder_ViewBinding;->target:Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;

    .line 35
    iput-object v1, v0, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->winnerContainer:Landroid/widget/LinearLayout;

    .line 36
    iput-object v1, v0, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->winnerName:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->winnerPrize:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/intermedia/adapters/WinnerListAdapter$ViewHolder;->winnerAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    return-void
.end method

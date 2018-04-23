.class public Lcom/intermedia/chat/ChatAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ChatAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/chat/ChatAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/intermedia/chat/ChatAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/intermedia/chat/ChatAdapter$ViewHolder_ViewBinding;->target:Lcom/intermedia/chat/ChatAdapter$ViewHolder;

    const-string v0, "field \'avatarImageView\'"

    .line 24
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a005f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->avatarImageView:Landroid/widget/ImageView;

    const-string v0, "field \'messageTextView\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0067

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->messageTextView:Landroid/widget/TextView;

    const-string v0, "field \'spamAvatar\'"

    .line 26
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0069

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->spamAvatar:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06008a

    .line 29
    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->hqTurquoiseColor:I

    const v0, 0x7f0600b6

    .line 30
    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->textChatUsernameColor:I

    const v0, 0x7f0600bd

    .line 31
    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->whiteColor:I

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter$ViewHolder_ViewBinding;->target:Lcom/intermedia/chat/ChatAdapter$ViewHolder;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/intermedia/chat/ChatAdapter$ViewHolder_ViewBinding;->target:Lcom/intermedia/chat/ChatAdapter$ViewHolder;

    .line 41
    iput-object v1, v0, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->avatarImageView:Landroid/widget/ImageView;

    .line 42
    iput-object v1, v0, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->messageTextView:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->spamAvatar:Landroid/widget/ImageView;

    return-void
.end method

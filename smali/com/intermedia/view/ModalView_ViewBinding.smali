.class public final Lcom/intermedia/view/ModalView_ViewBinding;
.super Lcom/intermedia/view/HQModalView_ViewBinding;
.source "ModalView_ViewBinding.java"


# instance fields
.field private target:Lcom/intermedia/view/ModalView;

.field private view2131361919:Landroid/view/View;

.field private view2131362070:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/intermedia/view/ModalView;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/intermedia/view/HQModalView_ViewBinding;-><init>(Lcom/intermedia/view/HQModalView;Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/intermedia/view/ModalView_ViewBinding;->target:Lcom/intermedia/view/ModalView;

    const-string v0, "field \'answerResultView\'"

    .line 32
    const-class v1, Lcom/intermedia/view/AnswerResultView;

    const v2, 0x7f0a010f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/view/AnswerResultView;

    iput-object v0, p1, Lcom/intermedia/view/ModalView;->answerResultView:Lcom/intermedia/view/AnswerResultView;

    const-string v0, "field \'avatarView\'"

    .line 33
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0112

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/view/ModalView;->avatarView:Landroid/widget/ImageView;

    const-string v0, "field \'avatarBadgeView\'"

    .line 34
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0110

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/view/ModalView;->avatarBadgeView:Landroid/widget/ImageView;

    const-string v0, "field \'modalTitle\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a011a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/view/ModalView;->modalTitle:Landroid/widget/TextView;

    const-string v0, "field \'continueWatchingTextView\' and method \'dismiss\'"

    const v1, 0x7f0a007f

    .line 36
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'continueWatchingTextView\'"

    .line 37
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/intermedia/view/ModalView;->continueWatchingTextView:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/intermedia/view/ModalView_ViewBinding;->view2131361919:Landroid/view/View;

    .line 39
    new-instance v1, Lcom/intermedia/view/ModalView_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/view/ModalView_ViewBinding$1;-><init>(Lcom/intermedia/view/ModalView_ViewBinding;Lcom/intermedia/view/ModalView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'modalBody\'"

    .line 45
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0115

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/view/ModalView;->modalBody:Landroid/widget/TextView;

    const-string v0, "field \'externalActionButton\'"

    .line 46
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0117

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    const-string v0, "method \'dismiss\'"

    const v1, 0x7f0a0116

    .line 47
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/intermedia/view/ModalView_ViewBinding;->view2131362070:Landroid/view/View;

    .line 49
    new-instance v1, Lcom/intermedia/view/ModalView_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/view/ModalView_ViewBinding$2;-><init>(Lcom/intermedia/view/ModalView_ViewBinding;Lcom/intermedia/view/ModalView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060022

    .line 58
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/ModalView;->blackColor:I

    const v1, 0x7f060089

    .line 59
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/ModalView;->hqRedColor:I

    const v1, 0x7f06008b

    .line 60
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/ModalView;->hqYellowColor:I

    const v1, 0x7f0600bd

    .line 61
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Lcom/intermedia/view/ModalView;->whiteColor:I

    const p2, 0x7f11001a

    .line 62
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/intermedia/view/ModalView;->inviteAFriendString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/intermedia/view/ModalView_ViewBinding;->target:Lcom/intermedia/view/ModalView;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/intermedia/view/ModalView_ViewBinding;->target:Lcom/intermedia/view/ModalView;

    .line 71
    iput-object v1, v0, Lcom/intermedia/view/ModalView;->answerResultView:Lcom/intermedia/view/AnswerResultView;

    .line 72
    iput-object v1, v0, Lcom/intermedia/view/ModalView;->avatarView:Landroid/widget/ImageView;

    .line 73
    iput-object v1, v0, Lcom/intermedia/view/ModalView;->avatarBadgeView:Landroid/widget/ImageView;

    .line 74
    iput-object v1, v0, Lcom/intermedia/view/ModalView;->modalTitle:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/intermedia/view/ModalView;->continueWatchingTextView:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/intermedia/view/ModalView;->modalBody:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/intermedia/view/ModalView_ViewBinding;->view2131361919:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcom/intermedia/view/ModalView_ViewBinding;->view2131361919:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/intermedia/view/ModalView_ViewBinding;->view2131362070:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iput-object v1, p0, Lcom/intermedia/view/ModalView_ViewBinding;->view2131362070:Landroid/view/View;

    .line 84
    invoke-super {p0}, Lcom/intermedia/view/HQModalView_ViewBinding;->unbind()V

    return-void
.end method

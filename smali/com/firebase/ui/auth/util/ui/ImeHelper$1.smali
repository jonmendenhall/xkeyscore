.class final Lcom/firebase/ui/auth/util/ui/ImeHelper$1;
.super Ljava/lang/Object;
.source "ImeHelper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/util/ui/ImeHelper;->setImeOnDoneListener(Landroid/widget/EditText;Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/firebase/ui/auth/util/ui/ImeHelper$1;->val$listener:Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    .line 22
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 23
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 24
    iget-object p2, p0, Lcom/firebase/ui/auth/util/ui/ImeHelper$1;->val$listener:Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;

    invoke-interface {p2}, Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;->onDonePressed()V

    :cond_0
    return p1

    :cond_1
    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    .line 31
    iget-object p2, p0, Lcom/firebase/ui/auth/util/ui/ImeHelper$1;->val$listener:Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;

    invoke-interface {p2}, Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;->onDonePressed()V

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

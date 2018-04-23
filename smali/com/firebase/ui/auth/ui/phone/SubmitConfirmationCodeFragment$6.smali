.class Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$6;
.super Ljava/lang/Object;
.source "SubmitConfirmationCodeFragment.java"

# interfaces
.implements Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->createBucketOnEditCallback(Landroid/widget/Button;)Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;Landroid/widget/Button;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$6;->this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$6;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whileComplete()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$6;->val$button:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public whileIncomplete()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$6;->val$button:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

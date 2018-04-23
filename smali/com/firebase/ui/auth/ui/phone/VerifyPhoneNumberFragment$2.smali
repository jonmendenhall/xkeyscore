.class Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment$2;
.super Ljava/lang/Object;
.source "VerifyPhoneNumberFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->setupCountrySpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment$2;->this$0:Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment$2;->this$0:Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->access$100(Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.class Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity$1;
.super Ljava/lang/Object;
.source "AuthMethodPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->populateIdpList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;

.field final synthetic val$provider:Lcom/firebase/ui/auth/provider/Provider;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;Lcom/firebase/ui/auth/provider/Provider;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity$1;->this$0:Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity$1;->val$provider:Lcom/firebase/ui/auth/provider/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 134
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity$1;->val$provider:Lcom/firebase/ui/auth/provider/Provider;

    instance-of p1, p1, Lcom/firebase/ui/auth/provider/IdpProvider;

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity$1;->this$0:Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object p1

    sget v0, Lcom/firebase/ui/auth/R$string;->fui_progress_dialog_loading:I

    invoke-virtual {p1, v0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->showLoadingDialog(I)V

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity$1;->val$provider:Lcom/firebase/ui/auth/provider/Provider;

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity$1;->this$0:Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;

    invoke-interface {p1, v0}, Lcom/firebase/ui/auth/provider/Provider;->startLogin(Landroid/app/Activity;)V

    return-void
.end method

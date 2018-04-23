.class Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup$1;
.super Ljava/lang/Object;
.source "CountryListSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$selected:I


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;Landroid/widget/ListView;I)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup$1;->this$1:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup$1;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup$1;->val$selected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup$1;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup$1;->val$selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

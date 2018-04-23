.class public Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;
.super Ljava/lang/Object;
.source "CountryListSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogPopup"
.end annotation


# static fields
.field private static final DELAY_MILLIS:J = 0xaL


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private final listAdapter:Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;

.field final synthetic this$0:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->this$0:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->listAdapter:Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->dialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->listAdapter:Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;

    invoke-virtual {p1, p2}, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    .line 171
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->this$0:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/CountryInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->access$002(Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    iget-object p2, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->this$0:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/CountryInfo;->getCountryCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/CountryInfo;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->access$100(Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;ILjava/util/Locale;)V

    .line 173
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->dismiss()V

    return-void
.end method

.method public show(I)V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->listAdapter:Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->this$0:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;

    invoke-virtual {v1}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->listAdapter:Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->dialog:Landroid/app/AlertDialog;

    .line 155
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->dialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 156
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 158
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 159
    new-instance v1, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup$1;-><init>(Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;Landroid/widget/ListView;I)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

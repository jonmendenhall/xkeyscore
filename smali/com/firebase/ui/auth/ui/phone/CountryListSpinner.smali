.class public final Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "CountryListSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/firebase/ui/auth/data/client/CountryListLoadTask$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;
    }
.end annotation


# instance fields
.field private final mCountryListAdapter:Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;

.field private final mDialogPopup:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mSelectedCountryName:Ljava/lang/String;

.field private final mTextFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1010081

    .line 47
    invoke-direct {p0, p1, v0, v1}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010081

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-super {p0, p0}, Landroid/support/v7/widget/AppCompatEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance p1, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;

    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mCountryListAdapter:Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;

    .line 59
    new-instance p1, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;

    iget-object p2, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mCountryListAdapter:Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;

    invoke-direct {p1, p0, p2}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;-><init>(Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;)V

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mDialogPopup:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;

    const-string p1, "%1$s  +%2$d"

    .line 60
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mTextFormat:Ljava/lang/String;

    const-string p1, ""

    .line 61
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mSelectedCountryName:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/firebase/ui/auth/util/data/PhoneNumberUtils;->getCurrentCountryInfo(Landroid/content/Context;)Lcom/firebase/ui/auth/data/model/CountryInfo;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/CountryInfo;->getCountryCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/CountryInfo;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->setSpinnerText(ILjava/util/Locale;)V

    return-void
.end method

.method static synthetic access$002(Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mSelectedCountryName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;ILjava/util/Locale;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->setSpinnerText(ILjava/util/Locale;)V

    return-void
.end method

.method private executeUserClickListener(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static hideKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "input_method"

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private loadCountryList()V
    .locals 3

    .line 112
    new-instance v0, Lcom/firebase/ui/auth/data/client/CountryListLoadTask;

    invoke-direct {v0, p0}, Lcom/firebase/ui/auth/data/client/CountryListLoadTask;-><init>(Lcom/firebase/ui/auth/data/client/CountryListLoadTask$Listener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/firebase/ui/auth/data/client/CountryListLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setSpinnerText(ILjava/util/Locale;)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mTextFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/firebase/ui/auth/data/model/CountryInfo;->localeToEmoji(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v0, Lcom/firebase/ui/auth/data/model/CountryInfo;

    invoke-direct {v0, p2, p1}, Lcom/firebase/ui/auth/data/model/CountryInfo;-><init>(Ljava/util/Locale;I)V

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mCountryListAdapter:Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->loadCountryList()V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mDialogPopup:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mCountryListAdapter:Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mSelectedCountryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->getPositionForCountry(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->show(I)V

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->executeUserClickListener(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatEditText;->onDetachedFromWindow()V

    .line 90
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mDialogPopup:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mDialogPopup:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public onLoadComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/ui/auth/data/model/CountryInfo;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mCountryListAdapter:Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;

    invoke-virtual {v0, p1}, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->setData(Ljava/util/List;)V

    .line 124
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mDialogPopup:Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mCountryListAdapter:Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mSelectedCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->getPositionForCountry(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner$DialogPopup;->show(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSelectedForCountry(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 2

    .line 79
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->mSelectedCountryName:Ljava/lang/String;

    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/firebase/ui/auth/ui/phone/CountryListSpinner;->setSpinnerText(ILjava/util/Locale;)V

    :cond_0
    return-void
.end method

.class public final Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;
.super Ljava/lang/Object;
.source "BucketedTextChangeListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;

.field private final mEditText:Landroid/widget/EditText;

.field private final mExpectedContentLength:I

.field private final mPlaceHolder:Ljava/lang/String;

.field private final mPostFixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;ILjava/lang/String;Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mEditText:Landroid/widget/EditText;

    .line 67
    iput p2, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mExpectedContentLength:I

    .line 68
    invoke-static {p3, p2}, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->generatePostfixArray(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mPostFixes:[Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mCallback:Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;

    .line 70
    iput-object p3, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mPlaceHolder:Ljava/lang/String;

    return-void
.end method

.method private static generatePostfixArray(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    .locals 4

    add-int/lit8 v0, p1, 0x1

    .line 82
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_0

    const-string v2, ""

    .line 85
    invoke-static {v1, p0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    const-string p3, ""

    .line 100
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mPlaceHolder:Ljava/lang/String;

    const-string p3, ""

    .line 101
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget p3, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mExpectedContentLength:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p3, 0x0

    .line 105
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 110
    iget-object p3, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object p3, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mEditText:Landroid/widget/EditText;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mPostFixes:[Ljava/lang/String;

    iget v0, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mExpectedContentLength:I

    sub-int/2addr v0, p2

    aget-object p1, p1, v0

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 113
    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    iget p1, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mExpectedContentLength:I

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mCallback:Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mCallback:Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;

    invoke-interface {p1}, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;->whileComplete()V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mCallback:Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;

    if-eqz p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;->mCallback:Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;

    invoke-interface {p1}, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;->whileIncomplete()V

    :cond_1
    :goto_0
    return-void
.end method

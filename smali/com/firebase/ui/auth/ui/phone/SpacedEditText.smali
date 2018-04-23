.class public final Lcom/firebase/ui/auth/ui/phone/SpacedEditText;
.super Landroid/support/design/widget/TextInputEditText;
.source "SpacedEditText.java"


# instance fields
.field private mOriginalText:Landroid/text/SpannableStringBuilder;

.field private mProportion:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputEditText;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Landroid/text/SpannableStringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->mOriginalText:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->mOriginalText:Landroid/text/SpannableStringBuilder;

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getSpacedOutString(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 89
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_0

    .line 96
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    const-string v4, " "

    .line 97
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x2

    .line 99
    new-instance v4, Landroid/text/style/ScaleXSpan;

    iget v5, p0, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->mProportion:F

    invoke-direct {v4, v5}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    add-int/lit8 v5, v2, 0x1

    const/16 v6, 0x21

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 104
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getUnspacedText()Landroid/text/Editable;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->mOriginalText:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 51
    sget-object v0, Lcom/firebase/ui/auth/R$styleable;->SpacedEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    sget p2, Lcom/firebase/ui/auth/R$styleable;->SpacedEditText_spacingProportion:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->mProportion:F

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setSelection(I)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    :goto_0
    add-int v1, p1, v0

    .line 78
    :try_start_0
    invoke-super {p0, v1}, Landroid/support/design/widget/TextInputEditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 81
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestedIndex="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", spacesUpToIndex="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", originalText="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->mOriginalText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 59
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->mOriginalText:Landroid/text/SpannableStringBuilder;

    .line 60
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->getSpacedOutString(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

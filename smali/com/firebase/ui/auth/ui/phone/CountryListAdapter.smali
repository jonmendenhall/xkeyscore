.class final Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CountryListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/firebase/ui/auth/data/model/CountryInfo;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field private final alphaIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final countryPosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    sget v0, Lcom/firebase/ui/auth/R$layout;->fui_dgts_country_row:I

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->alphaIndex:Ljava/util/HashMap;

    .line 38
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->countryPosition:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getPositionForCountry(Ljava/lang/String;)I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->countryPosition:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getPositionForSection(I)I
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->sections:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-gtz p1, :cond_1

    return v1

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->sections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 86
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->sections:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->alphaIndex:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->sections:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->sections:[Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/ui/auth/data/model/CountryInfo;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/ui/auth/data/model/CountryInfo;

    .line 50
    invoke-virtual {v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 52
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->alphaIndex:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    iget-object v4, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->alphaIndex:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->countryPosition:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/firebase/ui/auth/data/model/CountryInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    .line 61
    invoke-virtual {p0, v2}, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->alphaIndex:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->sections:[Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->alphaIndex:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->sections:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/CountryListAdapter;->notifyDataSetChanged()V

    return-void
.end method

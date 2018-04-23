.class public abstract Lcom/intermedia/util/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countries()Lio/reactivex/Observable;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/intermedia/login/CountryInfo;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getSupportedRegions()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/intermedia/util/PhoneNumberUtils$$Lambda$0;->$instance:Lio/reactivex/functions/Function;

    .line 21
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static formatE164(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 40
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0, p0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 1
    .param p0    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p0

    return p0
.end method

.method static final synthetic lambda$regions$0$PhoneNumberUtils(Lcom/intermedia/login/CountryInfo;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/intermedia/login/CountryInfo;->region:Ljava/lang/String;

    return-object p0
.end method

.method public static regions()Lio/reactivex/Observable;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/intermedia/util/PhoneNumberUtils;->countries()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/intermedia/util/PhoneNumberUtils$$Lambda$1;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sortedCountries()Lio/reactivex/Single;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/intermedia/login/CountryInfo;",
            ">;>;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/intermedia/util/PhoneNumberUtils;->countries()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->toSortedList()Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public static toCountryInfo(Ljava/lang/String;)Lcom/intermedia/login/CountryInfo;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 45
    new-instance v0, Lcom/intermedia/login/CountryInfo;

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    invoke-direct {v2, v3, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/intermedia/login/CountryInfo;-><init>(ILjava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

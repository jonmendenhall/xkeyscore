.class public final Lcom/google/android/gms/internal/zzdxt;
.super Lcom/google/android/gms/internal/zzdvw;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;


# instance fields
.field private final zzmbb:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdvw;-><init>()V

    const-string v0, "A valid API key must be provided"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdxt;->zzmbb:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzdxs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdxt;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdxu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdxt;->zzmbb:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdxu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdxu;->zzbrq()Lcom/google/android/gms/internal/zzdxt;

    move-result-object v0

    return-object v0
.end method

.method public final getApiKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdxt;->zzmbb:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic zzbrj()Lcom/google/android/gms/internal/zzdvw;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdvw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdxt;

    return-object v0
.end method

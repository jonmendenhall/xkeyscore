.class public final Lcom/google/android/gms/internal/zzdxu;
.super Ljava/lang/Object;


# instance fields
.field private zzmbb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdxu;->zzmbb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzbrq()Lcom/google/android/gms/internal/zzdxt;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdxt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdxu;->zzmbb:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzdxt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzdxs;)V

    return-object v0
.end method

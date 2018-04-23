.class final Lcom/google/android/gms/internal/zzejk;
.super Lcom/google/android/gms/internal/zzear;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzear<",
        "Lcom/google/android/gms/internal/zzejg;",
        "Lcom/google/android/gms/internal/zzekd;",
        ">;"
    }
.end annotation


# instance fields
.field private zznbz:Z

.field private synthetic zznca:Lcom/google/android/gms/internal/zzejl;

.field private synthetic zzncb:Lcom/google/android/gms/internal/zzeji;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeji;Lcom/google/android/gms/internal/zzejl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejk;->zzncb:Lcom/google/android/gms/internal/zzeji;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzejk;->zznca:Lcom/google/android/gms/internal/zzejl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzear;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzejk;->zznbz:Z

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/zzejg;

    check-cast p2, Lcom/google/android/gms/internal/zzekd;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzejk;->zznbz:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzp()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzejg;->zzi(Lcom/google/android/gms/internal/zzejg;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzejk;->zznbz:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejk;->zznca:Lcom/google/android/gms/internal/zzejl;

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzp()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejk;->zzncb:Lcom/google/android/gms/internal/zzeji;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeji;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzejl;->zzb(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejk;->zznca:Lcom/google/android/gms/internal/zzejl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzejl;->zzb(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    return-void
.end method

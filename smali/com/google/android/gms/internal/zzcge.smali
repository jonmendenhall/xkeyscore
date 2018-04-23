.class final Lcom/google/android/gms/internal/zzcge;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbfa:Ljava/lang/String;

.field private synthetic zziwu:J

.field private synthetic zziwv:Lcom/google/android/gms/internal/zzcgd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgd;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcge;->zziwv:Lcom/google/android/gms/internal/zzcgd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcge;->zzbfa:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcge;->zziwu:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcge;->zziwv:Lcom/google/android/gms/internal/zzcgd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcge;->zzbfa:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcge;->zziwu:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcgd;->zza(Lcom/google/android/gms/internal/zzcgd;Ljava/lang/String;J)V

    return-void
.end method

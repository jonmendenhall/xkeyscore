.class final Lcom/google/android/gms/internal/zzeej;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzece;


# instance fields
.field private synthetic zzmti:Lcom/google/android/gms/internal/zzedn;

.field private synthetic zzmuc:Lcom/google/android/gms/internal/zzegd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzegd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeej;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeej;->zzmuc:Lcom/google/android/gms/internal/zzegd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzedn;->zzbf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeej;->zzmti:Lcom/google/android/gms/internal/zzedn;

    const-string v0, "Persisted write"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeej;->zzmuc:Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Ljava/lang/String;Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/DatabaseError;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeej;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeej;->zzmuc:Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbwy()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeej;->zzmuc:Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-static {p2, v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;JLcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

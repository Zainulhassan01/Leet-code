def subdomain_visits(cpdomains)
    hash = {}
    cpdomains.each do |domain|
        hash.merge!(domain.split(' ').first=> domain.split(' ').second)
    end
    subdomain_hash = {}
    hash.values.each_with_index do |sub_domain, index|
        first_count = hash.key(sub_domain)
        sub_domain.split('.').each do |substr|
            hash.values.drop(index + 1).each do |sub_domain1|
                if sub_domain1.include? substr
                    second_count = hash.key(sub_domain1)
                    count = first_count.to_i + second_count.to_i
                    if subdomain_hash.key(substr).nil?
                        subdomain_hash.merge!(count => substr)
                    else
                        exist_count = subdomain_hash.key(substr)
                        subdomain_hash.delete(exist_count)
                        update_count = exist_count.to_i + second_count.to_i
                        subdomain_hash.merge!(update_count => substr)
                    end
                end
            end
        end
    end
    hash.merge!(subdomain_hash)
end
